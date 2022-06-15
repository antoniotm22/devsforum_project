const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
    daisyui: {
        themes: [
            {
                mytheme: {
                    primary: "#d71f93",
                    secondary: "#343692",
                    accent: "#772B92",
                    neutral: "#3d4451",
                    "base-100": "#ffffff",
                },
            },

        ],
    },

    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {

        extend: {
            fontFamily: {
                sans: ['Nunito', ...defaultTheme.fontFamily.sans],
            },
        },
    },


    plugins: [require('@tailwindcss/forms')],
    plugins: [require("daisyui")],
};
