# EmailJS Setup Guide

## Step 1: Create EmailJS Account
1. Go to [https://www.emailjs.com/](https://www.emailjs.com/)
2. Sign up for a free account (100 emails/month free)

## Step 2: Add Email Service
1. Go to **Email Services** in the dashboard
2. Click **Add New Service**
3. Choose your email provider (Gmail, Outlook, etc.)
4. Follow the instructions to connect your email
5. Copy the **Service ID** (e.g., `service_abc123`)

## Step 3: Create Email Template
1. Go to **Email Templates** in the dashboard
2. Click **Create New Template**
3. Set up your template with these variables:

### Template Content Example:
```
Subject: New Service Request - {{service_name}}

Hello {{to_name}},

You have received a new service request:

{{message}}

Customer Contact Details:
- Name: {{from_name}}
- Email: {{from_email}}
- Phone: {{phone}}

Best regards,
Your Website
```

### Available Variables:
- `{{to_name}}` - Your company name
- `{{from_name}}` - Customer's full name
- `{{from_email}}` - Customer's email
- `{{phone}}` - Customer's phone number
- `{{country}}` - Customer's country/timezone
- `{{company_name}}` - Customer's company name
- `{{company_website}}` - Customer's website
- `{{service_name}}` - Selected service
- `{{plan_name}}` - Selected plan
- `{{plan_price}}` - Plan price
- `{{business_type}}` - Business type
- `{{industry}}` - Industry/niche
- `{{target_market}}` - Target market
- `{{business_description}}` - Business description
- `{{message}}` - Full formatted message

4. Save the template and copy the **Template ID** (e.g., `template_xyz789`)

## Step 4: Get Public Key
1. Go to **Account** → **General**
2. Find your **Public Key** (e.g., `abcDEF123xyz`)

## Step 5: Update Your Environment Variables
Open the `.env` file in the root of your project and replace the placeholder values with your actual EmailJS credentials:

```
REACT_APP_EMAILJS_SERVICE_ID=service_abc123
REACT_APP_EMAILJS_TEMPLATE_ID=template_xyz789
REACT_APP_EMAILJS_PUBLIC_KEY=abcDEF123xyz
```

**Important Notes:**
- The `.env` file is already created in your project root
- All variables must start with `REACT_APP_` to be accessible in React
- After updating the `.env` file, restart your development server (`npm start`)
- The `.env` file is in `.gitignore` to keep your keys secure
- Never commit your `.env` file to Git

### Example .env file:
```env
REACT_APP_EMAILJS_SERVICE_ID=service_abc123
REACT_APP_EMAILJS_TEMPLATE_ID=template_xyz789
REACT_APP_EMAILJS_PUBLIC_KEY=abcDEF123xyz
```

## Step 6: Test the Form
1. Start your React app: `npm start`
2. Navigate to a service and click "Get Started"
3. Fill out the form
4. Click "Send Contact Request"
5. Check your connected email inbox for the message

## Troubleshooting

### Email not received?
- Check your EmailJS dashboard for sent emails
- Verify all IDs are correct
- Check spam folder
- Make sure your email service is active

### Rate limit errors?
- Free tier: 100 emails/month
- Consider upgrading or using a backend service for production

### CORS errors?
- EmailJS should work from any domain
- Make sure you're using the latest version

## Security Note
For production, consider:
1. Moving EmailJS keys to environment variables
2. Using a backend API to send emails
3. Implementing rate limiting
4. Adding reCAPTCHA to prevent spam

## Support
- EmailJS Documentation: [https://www.emailjs.com/docs/](https://www.emailjs.com/docs/)
- EmailJS Support: [https://www.emailjs.com/support/](https://www.emailjs.com/support/)
