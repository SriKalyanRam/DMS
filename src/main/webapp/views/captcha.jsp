<%@ page contentType="image/png" %>
<%@ page import="java.awt.image.BufferedImage, java.awt.Color, java.awt.Font, java.awt.Graphics, javax.imageio.ImageIO, java.io.OutputStream, java.util.Random" %>
<%
  // Generate a random CAPTCHA text
  String captchaText = generateRandomText(6); // Adjust the length as needed

  // Store the CAPTCHA text in a session attribute for later verification
  session.setAttribute("captcha_text", captchaText);

  // Create a CAPTCHA image with the generated text
  BufferedImage image = new BufferedImage(150, 50, BufferedImage.TYPE_INT_RGB);
  Graphics g = image.getGraphics();
  g.setColor(Color.WHITE);
  g.fillRect(0, 0, 150, 50);
  g.setColor(Color.BLACK);
  g.setFont(new Font("Arial", Font.PLAIN, 30));
  g.drawString(captchaText, 30, 35);
  OutputStream out = response.getOutputStream();
  ImageIO.write(image, "png", out);
%>

<%! 
  String generateRandomText(int length) {
    String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    StringBuilder text = new StringBuilder();
    Random random = new Random();
    for (int i = 0; i < length; i++) {
      text.append(characters.charAt(random.nextInt(characters.length()));
    }
    return text.toString();
  }
%>
