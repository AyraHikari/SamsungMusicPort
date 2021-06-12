.class public abstract enum Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

.field public static final enum ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

.field private static final BIZ_INFO_URL:Ljava/lang/String; = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1248100998"

.field public static final enum BROWSE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

.field private static final END_URL_TAG:Ljava/lang/String; = "</a>"

.field private static final HTML_LINE_SEPARATOR_TAG:Ljava/lang/String; = " <br>"

.field public static final PRIVACY_URL:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information.html"

.field private static final REG_EXP_URL:Ljava/lang/String; = "(https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|www\\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9]\\.[^\\s]{2,}|www\\.[a-zA-Z0-9]\\.[^\\s]{2,})"

.field private static final START_URL_TAG_FORMAT:Ljava/lang/String; = "<a href=\"%s\">"

.field public static final enum STORE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

.field public static final TERMS_OF_SERVICE_URL:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;

    const-string v1, "STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->STORE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;

    const-string v1, "ABOUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;

    const-string v1, "BROWSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->BROWSE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->STORE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->BROWSE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    const-string v0, "(https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|www\\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\\.[^\\s]{2,}|https?:\\/\\/(?:www\\.|(?!www))[a-zA-Z0-9]\\.[^\\s]{2,}|www\\.[a-zA-Z0-9]\\.[^\\s]{2,})"

    .line 215
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->makeLinkSpan(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/widget/TextView;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->makeLinksFocusable(Landroid/widget/TextView;)V

    return-void
.end method

.method public static launchLinkPrivacyPolicy(Landroid/content/Context;)V
    .locals 1

    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information.html"

    .line 166
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static launchLinkTermsOfService(Landroid/content/Context;)V
    .locals 1

    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    .line 170
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static makeLinkSpan(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;
    .locals 4

    .line 174
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 177
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 p2, 0x21

    invoke-virtual {v0, p1, v2, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static makeLinksFocusable(Landroid/widget/TextView;)V
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    return-object v0
.end method


# virtual methods
.method buildHtmlLink(Landroid/text/SpannableStringBuilder;)Landroid/text/Spanned;
    .locals 6

    .line 131
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "<a href=\"%s\">"

    const/4 v4, 0x1

    .line 134
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 138
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v3, v2

    const-string v4, "</a>"

    invoke-virtual {p1, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, "</a>"

    .line 139
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method buildHtmlNewLine(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 145
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "\n"

    .line 146
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\u00A0"

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "    "

    .line 147
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method public abstract buildNotice(Landroid/widget/TextView;)V
.end method

.method public buildNotice(Landroid/widget/TextView;I)V
    .locals 0

    return-void
.end method
