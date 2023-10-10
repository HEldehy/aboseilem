import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../reausable_components/widgets/carosual_container.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            CarouselSlider(
                items: [
                  ContainerDesign(
                    text: 'Lecture 1',

                    function: (){
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=>
                      //     PdfPage(pdf: 'assets/images/na1.pdf',)
                      // ));
                    },height: 200,
                    width: 250,
                  ),
                  // ContainerDesign(
                  //   text: 'الصرف',
                  //
                  //   function: (){
                  //     Navigator.push(context, MaterialPageRoute(builder:(context)=>
                  //         PdfPage(pdf: 'assets/images/tt.pdf',)
                  //     ));
                  //   },
                  // ),
                  ContainerDesign(
                    text: 'Lecture 2',

                    function: (){
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=>
                      //     PdfPage(pdf: 'assets/images/b1.pdf',)
                      // ));
                    }, height: 200,
                    width: 250,
                  ),
                  // ContainerDesign(
                  //   text: '... الأدب',
                  //
                  //   function: (){
                  //     Navigator.push(context, MaterialPageRoute(builder:(context)=>
                  //         PdfPage(pdf: 'assets/images/tt.pdf',)
                  //     ));
                  //   },
                  // ),
                  ContainerDesign(
                    text: 'Lecture 3',

                    function: (){
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=>
                      //     PdfPage(pdf: 'assets/images/n1.pdf',)
                      // ));
                    }, height: 200,
                    width: 250,
                  ),

                ],
                options: CarouselOptions(
                  height: 180.0,
                  initialPage: 0,
                  viewportFraction: 0.45,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 10),
                  autoPlayAnimationDuration: const Duration(seconds: 5),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                )),
          const  SizedBox(height: 30,),
            InkWell(
              onTap: (){
                // Navigator.push(context,
                //     MaterialPageRoute(builder:(context)=>
                //         After()
                //     ));

              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:const Center(child: Text('Any Material',style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold

                  ),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
