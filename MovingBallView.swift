//Mandariinipeli?



import SwiftUI

struct Pacman : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center )
      
      pacman_path.addArc( center: rectangle_center,
         radius: 80,
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0.33 * .pi ),
         clockwise: false )

      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman2 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center )
      
      pacman_path.addArc( center: rectangle_center,
         radius: 80,
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0.66 * .pi ),
         clockwise: false )

      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman3 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center )
      
      pacman_path.addArc( center: rectangle_center,
         radius: 80,
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0.99 * .pi ),
         clockwise: false )

      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman4 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center )
      
      pacman_path.addArc( center: rectangle_center,
         radius: 80,
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 1.33 * .pi ),
         clockwise: false )

      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman5 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center )
      
      pacman_path.addArc( center: rectangle_center,
         radius: 80,
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 1.67 * .pi ),
         clockwise: false )

      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman6 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center )
      
      pacman_path.addArc( center: rectangle_center,
         radius: 80,
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 2.0 * .pi ),
         clockwise: false )

      pacman_path.closeSubpath()
      
      return pacman_path
   }
}


struct BallButtonStyle: ButtonStyle
{
    func makeBody( configuration: Configuration) -> some View
    {
      configuration.label
         .frame( minWidth: 0, maxWidth: .infinity, minHeight: 44 )
            .padding( .horizontal )
            .foregroundColor( Color.accentColor )
            .background( RoundedRectangle( cornerRadius: 8 ).stroke( Color.accentColor ) )
    }
   
}

struct MovementBbuttonStyle: ButtonStyle
{
    func makeBody( configuration: Configuration) -> some View
    {
      configuration.label
         .frame( minWidth: 0, maxWidth: .infinity, minHeight: 44 )
            .padding( .horizontal )
            .foregroundColor( Color.white )
            .background( RoundedRectangle( cornerRadius: 8 ).fill( Color.accentColor ) )
    }

}

struct MovingBallView : View
{
   @State private var showingAlert = false
   @State var namskista = 0
   @State var ball_filling_color = Color.orange
   @State var ball_offset = CGSize.zero
   @State var pacman_path = CGSize.zero
   @State var text_to_modify = "Eat mandarin!"

   
   let possible_ball_colors = [ Color.green, Color.white, /*Color.orange*/ ]
   

   var body : some View
   {
      
      
      ZStack
      {
         
         Color( red: 0.9, green: 0.9, blue: 0.9 ).edgesIgnoringSafeArea( .all )
         VStack( spacing: 150 ){
         Text( text_to_modify ).font( .largeTitle )
         ZStack
         {
            Circle().fill( ball_filling_color )
            .frame( width: 160, height: 160 )
            Circle().stroke( Color.gray, lineWidth: 2 )
            .frame( width: 160, height: 160 )
            
            
            if namskista == 1 {
               Pacman()
               .fill(Color.white)
               .frame(width: 160, height: 160)

            }
            if namskista == 2 {
               Pacman2()
               .fill(Color.white)
                  .frame(width: 160, height: 160)}
            
            if namskista == 3 {
               Pacman3()
               .fill(Color.white)
                  .frame(width: 160, height: 160)}
            
            if namskista == 4 {
               Pacman4()
               .fill(Color.white)
                  .frame(width: 160, height: 160)}
            
            if namskista == 5 {
               Pacman5()
               .fill(Color.white)
                  .frame(width: 160, height: 160)}
            
            if namskista == 6{
               Pacman6()
               .fill(Color.white)
                  .frame(width: 160, height: 160)
                  Circle().stroke( Color.white, lineWidth: 2 )
                  .frame( width: 160, height: 160 )
            }

         }
            
         VStack
         {
            
            Spacer()
             .frame(height: 50)
            
            VStack
            {
            Button( action:
                        {
                           
                self.namskista -= 1

            } )
            {
                  Text( "VOMIT!" )
                              
            }
               .buttonStyle( BallButtonStyle() )
               .font( .title )
                  .cornerRadius( 5 )
               .padding( EdgeInsets( top: 0, leading: 8, bottom: 5, trailing: 8 ) )
            }
            HStack
            {
               
               Button( action:
               {
                  
                  self.namskista += 1

               } )
               {
                  Text( "EAT" )
                  
               }
                  .buttonStyle( BallButtonStyle() )
                  .font( .title )
                     .cornerRadius( 5 )

               .buttonStyle( BallButtonStyle() )
               

                             .buttonStyle( BallButtonStyle() )

               Button( action:
               {
    
                  self.text_to_modify = "Game over :-("
                  self.ball_filling_color = self.possible_ball_colors.randomElement()!
               } )
               {
                  Text( "Don't eat" )
               }
                  .buttonStyle( BallButtonStyle() )
                  .font( .title )
                    .cornerRadius( 5 )
            }
            .padding( EdgeInsets( top: 0, leading: 8, bottom: 0, trailing: 8 ) )

         }
      }
   }
   }
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovingBallView()
    }
}

