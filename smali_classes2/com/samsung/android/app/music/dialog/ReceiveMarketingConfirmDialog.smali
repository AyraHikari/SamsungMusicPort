.class public Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$ClickableSpanString;,
        Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ReceiveMarketingConfirmDialog"

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|www\\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9]\\.[^\\s]{2,}|www\\.[a-zA-Z0-9]\\.[^\\s]{2,})"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;
    .locals 4

    .line 121
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v1, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$ClickableSpanString;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$ClickableSpanString;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 124
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 p2, 0x21

    invoke-virtual {v0, p1, v2, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static a()Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;
    .locals 1

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;-><init>()V

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 105
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 106
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/Spanned;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v3, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$3;-><init>(Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;)V

    invoke-static {v0, v3, v1}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->b(Landroid/widget/TextView;)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b()Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->c:Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;

    return-object v0
.end method

.method private static b(Landroid/widget/TextView;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/text/SpannableStringBuilder;)Landroid/text/Spanned;
    .locals 6

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 141
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "<a href=\"%s\">"

    const/4 v4, 0x1

    .line 142
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 146
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v3, v2

    const-string v4, "</a>"

    invoke-virtual {p1, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, "</a>"

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;)V
    .locals 0

    .line 62
    sput-object p1, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->c:Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$OnMarketingAgreeListener;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 69
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f04006b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f130070

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f13020f

    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f130213

    .line 73
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a(Landroid/widget/TextView;)V

    const v3, 0x7f0b0195

    .line 75
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b0306

    .line 76
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;)V

    const v2, 0x7f0b007f

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;)V

    const v2, 0x7f0b01f4

    .line 85
    invoke-virtual {p1, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->setCancelable(Z)V

    return-object p1
.end method
