.class final enum Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;
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

    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;)V

    return-void
.end method


# virtual methods
.method public buildNotice(Landroid/widget/TextView;)V
    .locals 6

    .line 108
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0505

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f0b04bf

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;->buildHtmlLink(Landroid/text/SpannableStringBuilder;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "   "

    .line 117
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3$1;-><init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;Landroid/content/Context;)V

    invoke-static {v3, v5, v2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->access$200(Landroid/widget/TextView;)V

    .line 125
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 126
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
