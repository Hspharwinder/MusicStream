module.exports = {
    host: 'mail.shyammobile.com',
    port: 587,
    secure: false, // true for 465, false for other ports
    debug: true,
    auth: {
        user: 'info@example.com', //process.env.GMAIL_USER, // generated ethereal user
        pass: '******' //process.env.GMAIL_PASSWORD // generated ethereal password
    },
    tls: {
        rejectUnauthorized: false
    },
    from: '<info@example.com>', // sender address
    to: 'example@example.com',
    baseUrl:'http://185.149.112.50:3000/'
};
