import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:online_book_app/screens/login.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  SharedPreferences localStorage;

  // function to return the items
  Widget items(var icon, var text, var page) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          if (page == 'license') {
            showAboutDialog(
                context: context,
                applicationIcon: FlutterLogo(),
                applicationName: 'LIBER',
                applicationVersion: '0.0.1',
                applicationLegalese:
                    "Developed on Github in Sushama Borhade's Repo",
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, "
                      "INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. "
                      "IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR "
                      "CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; "
                      "LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, "
                      "STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED "
                      "OF THE POSSIBILITY OF SUCH DAMAGE.")
                ]);
          }
          if (page == 'logout') {
            localStorage = await SharedPreferences.getInstance();
            await localStorage.setBool('login', true);

            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => LogIn(),
              ),
              (route) => false,
            );
            // Navigator.pushNamed(context, '/login');
          } else {
            Navigator.pushNamed(context, page);
          }
        },
        child: Container(
          height: 10.0,
          margin: EdgeInsets.symmetric(
            horizontal: 40.0,
          ).copyWith(bottom: 20.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(width: 2.0),
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.transparent,
          ),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 30.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var info = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: 120.0,
            width: 120.0,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 5),
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                )),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow[900],
                ),
                child: Icon(
                  LineAwesomeIcons.pencil,
                  size: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Tomy Stark',
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: .5),
          ),
          SizedBox(height: 5.0),
          Text(
            'tony.ironman@gmail.com',
            style: TextStyle(
                color: Colors.grey, fontSize: 15.0, letterSpacing: .5),
          ),
        ],
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [info],
          ),
          SizedBox(height: 40.0),
          items(Icons.download_outlined, 'Downloads', '/download'),
          items(Icons.insert_drive_file_outlined, 'License', 'license'),
          items(Icons.home, 'About', '/about'),
          items(Icons.logout, 'Logout', 'logout'),
        ]),
      ),
    );
  }
}
