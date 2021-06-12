.class public Lcom/samsung/android/app/music/help/MuseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/help/MuseHelper$MuseLoginRequestReceivable;,
        Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Help-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/help/MuseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/help/MuseHelper;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/help/MuseHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;)Landroid/content/Intent;
    .locals 4

    .line 134
    sget-object v0, Lcom/samsung/android/app/music/help/MuseHelper$1;->a:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const-string p2, ""

    goto :goto_0

    :pswitch_0
    const-string p2, "/faq/searchFaq.do"

    goto :goto_0

    :pswitch_1
    const-string p2, "/ticket/searchTicketList.do"

    goto :goto_0

    :pswitch_2
    const-string p2, "/ticket/createQuestionTicket.do"

    .line 147
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/help/MuseHelper;->b(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "https://help.content.samsung.com/csweb/auth/gosupport.do"

    .line 148
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "serviceCd"

    const-string v3, "smilk"

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "targetUrl"

    .line 150
    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v2, "chnlCd"

    const-string v3, "ODC"

    .line 151
    invoke-virtual {p2, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v2, "_common_lang"

    const-string v3, "ko"

    .line 152
    invoke-virtual {p2, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v2, "_common_country"

    const-string v3, "KR"

    .line 153
    invoke-virtual {p2, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v2, "saccountID"

    .line 154
    invoke-virtual {p2, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "mcc"

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-virtual {p1, p2, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "mnc"

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "brandNm"

    .line 157
    invoke-static {p0}, Lcom/samsung/android/app/music/help/MuseHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "dvcModelCd"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 158
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "dvcOSVersion"

    sget-object v0, Lcom/samsung/android/app/music/help/MuseHelper;->b:Ljava/lang/String;

    .line 159
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "odcVersion"

    .line 160
    invoke-static {p0}, Lcom/samsung/android/app/music/help/MuseHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 162
    sget-object p1, Lcom/samsung/android/app/music/help/MuseHelper;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Muse uri : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 168
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "com.osp.app.signin"

    .line 172
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 173
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 174
    aget-object p0, p0, v0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;)V
    .locals 3

    .line 119
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/samsung/android/app/music/help/MuseHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;->MY_QUESTION:Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;

    if-ne p1, v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    new-instance p1, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;-><init>()V

    .line 125
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/help/MuseHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;)Landroid/content/Intent;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/util/Pair;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    .line 184
    new-instance p0, Landroid/util/Pair;

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 188
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 190
    :cond_1
    new-instance p0, Landroid/util/Pair;

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "phone"

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samsung Music "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 218
    sget-object v0, Lcom/samsung/android/app/music/help/MuseHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot found samsung music app. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method
