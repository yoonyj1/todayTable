package com.todayTable.recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.todayTable.recipe.model.service.RecipeService;
import com.todayTable.recipe.model.vo.Recipe;

/**
 * Servlet implementation class RecipeOrderByViewController
 */
@WebServlet("/RecipeOrderByViewController")
public class RecipeOrderByViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeOrderByViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Recipe> list = new RecipeService().selectRecipeListOrderByView();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/recipe/recipeListView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
