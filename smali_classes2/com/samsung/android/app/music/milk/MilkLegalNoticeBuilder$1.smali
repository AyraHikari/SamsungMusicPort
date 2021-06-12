.class final enum Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;
.super Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;)V

    return-void
.end method


# virtual methods
.method public buildNotice(Landroid/widget/TextView;)V
    .locals 5

    .line 31
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0518

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_COPYRIGHT"

    .line 34
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, " <br>"

    .line 37
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;->buildHtmlNewLine(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;->buildHtmlLink(Landroid/text/SpannableStringBuilder;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0192

    .line 40
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v3, 0x7f0b04aa

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v4, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$1;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, "    "

    .line 48
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v3, 0x7f0b04ab

    .line 50
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    new-instance v4, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, "    "

    .line 56
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v3, 0x7f0b04a9

    .line 58
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v4, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$3;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$200(Landroid/widget/TextView;)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 68
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
