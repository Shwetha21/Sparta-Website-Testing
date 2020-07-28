﻿using OpenQA.Selenium;

namespace SharedLib
{
    public class SuperPage : IPage
    {
        protected IWebDriver _seleniumDriver;
        protected string _url;

        public SuperPage(IWebDriver seleniumDriver)
        {
            _seleniumDriver = seleniumDriver;
        }

        public void Visit()
        {
            _seleniumDriver.Navigate().GoToUrl(_url);
        }

        public void MaximisePage()
        {
            _seleniumDriver.Manage().Window.Maximize();
        }
    }
}
