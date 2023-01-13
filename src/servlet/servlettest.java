package servlet;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.Serial;

class LoginServlet extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, jakarta.servlet.ServletException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, jakarta.servlet.ServletException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        System.err.println(userName+";"+password);
        //设置用户名和密码
        String myUser = "zhangsan";
        String myPwd = "123";
        //判断用户名和密码是否正确
        if(myUser.equals(userName)) {
            if(myPwd.equals(password)){
                //重定向
                response.sendRedirect(request.getContextPath()+"/hello.jsp?userName="+userName);
                System.err.println("登录成功");
            }else {
                request.setAttribute("message", "密码错误，请重新登录<br>");
                //转发
                request.getRequestDispatcher("/login.jsp").forward(request, response);
                System.err.println("登录失败");
            }
        }else {
            request.setAttribute("message", "用户名错误，请重新登录<br>");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            System.err.println("登录失败");
        }
    }
}
