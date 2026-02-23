namespace WinFormsApp1
{
    
    public partial class Form1 : Form
    {
        private void CenterControl()
        {
            borderTextBox1.Left = (this.ClientSize.Width - borderTextBox1.Width) / 2;
            borderTextBox1.Top = (this.ClientSize.Height - borderTextBox1.Height) / 2;
        }

        public Form1()
        {
            InitializeComponent();
            this.Load += (s, e) => CenterControl();
            this.Resize += (s, e) => CenterControl();
        }

        




    }


}
