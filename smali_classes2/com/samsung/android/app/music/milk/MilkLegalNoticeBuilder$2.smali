.class final enum Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;
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

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;)V

    return-void
.end method


# virtual methods
.method public buildNotice(Landroid/widget/TextView;)V
    .locals 8

    .line 73
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0518

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_COPYRIGHT"

    .line 76
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f007b

    .line 79
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 81
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 82
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f0b04c0

    .line 84
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b04c1

    .line 85
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v6, " | "

    const-string v7, " <br>"

    .line 88
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v6, " <br>"

    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;->buildHtmlNewLine(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;->buildHtmlLink(Landroid/text/SpannableStringBuilder;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    new-instance v4, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2$1;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;Landroid/content/Context;)V

    .line 92
    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v0

    .line 91
    invoke-virtual {v5, v1, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
