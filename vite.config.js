// import { defineConfig } from 'vite';
// import laravel from 'laravel-vite-plugin';

// export default defineConfig({
//     plugins: [
//         laravel({
//             input: ['resources/js/app.js', 'resources/sass/app.scss'],
//             refresh: true,
//         }),
//     ],
//     build: {
//         outDir: 'public/build', // নিশ্চিত করুন বিল্ড ফাইল সঠিক স্থানে তৈরি হচ্ছে।
//     },

//     // plugins: [
//     //     laravel({
//     //         input: [
//     //             'resources/sass/app.scss',
//     //             'resources/js/app.js',
//     //         ],
//     //         refresh: true,
//     //     }),
//     // ],
//     // server: {
//     //     host: 'localhost', // নিশ্চিত করুন এখানে localhost ঠিকভাবে লেখা আছে।
//     //     port: 3000, // আপনার পছন্দমতো পোর্ট নম্বর ব্যবহার করুন।
//     // },
// });

import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: ['resources/sass/app.scss','resources/js/app.js'],
            refresh: true,
        }),
    ],
});

