.class public final Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider$Companion;

.field private static final b:Z

.field private static final c:Landroid/content/UriMatcher;

.field private static final d:Landroid/content/pm/Signature;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a:Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider$Companion;

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v2, "com.sec.android.app.music.restricted"

    const-string v3, "audio/albumart/#"

    const/16 v4, 0x2974

    .line 45
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "com.sec.android.app.music.restricted"

    const-string v3, "audio/playlists"

    const/16 v4, 0x4e21

    .line 46
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "com.sec.android.app.music.restricted"

    const-string v3, "audio/playlists/#"

    const/16 v4, 0x4e22

    .line 47
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "com.sec.android.app.music.restricted"

    const-string v3, "audio/playlists/#/members"

    const/16 v4, 0x4e2a

    .line 48
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sput-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->c:Landroid/content/UriMatcher;

    .line 51
    new-instance v0, Landroid/content/pm/Signature;

    const-string v2, "\n                    MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYD\n                    VQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENp\n                    dHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEV\n                    MBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9z\n                    QHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIx\n                    CzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3\n                    b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMD\n                    RE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJv\n                    aWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIB\n                    AQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz\n                    7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqj\n                    xtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR\n                    2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/\n                    inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9Lkth\n                    VIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoM\n                    dhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8e\n                    oYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzAR\n                    BgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24x\n                    DDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcN\n                    AQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUw\n                    AwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OL\n                    DUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAO\n                    TcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAv\n                    cv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRM\n                    YWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2W\n                    zoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    const/4 v3, 0x1

    .line 80
    invoke-static {v2, v1, v3, v1}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->d:Landroid/content/pm/Signature;

    const-string v0, "com.samsung.android.gearoplugin"

    const-string v1, "com.samsung.android.geargplugin"

    const-string v2, "com.samsung.android.gearpplugin"

    const-string v3, "com.samsung.android.gearfit2plugin"

    .line 89
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->e:[Ljava/lang/String;

    const-string v0, "27196E386B875E76ADF700E7EA84E4C6EEE33DFA"

    .line 97
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->f:[Ljava/lang/String;

    const-string v0, "9CA5170F381919DFE0446FCDAB18B19A143B3163"

    const-string v1, "29C647CBCC9A5FBD6C0C961E05712BD15352A1F5"

    .line 104
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;
    .locals 8

    const-string v0, "OpenRestrictedMusicProvider"

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryInternal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v2, "queryArgs.uri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 186
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 187
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 188
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 189
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 190
    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 185
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v2, "queryArgs.uri"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v2, "queryArgs.uri"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    throw v0
.end method

.method private final a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method private final a(Landroid/content/Context;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 262
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 335
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    const-string v7, "com.samsung.android.bixby.agent"

    .line 267
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 268
    invoke-virtual {p1, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_3

    .line 270
    array-length v7, v6

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    xor-int/2addr v7, v1

    if-eqz v7, :cond_3

    sget-object v7, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->d:Landroid/content/pm/Signature;

    aget-object v6, v6, v3

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 277
    :cond_4
    sget-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->e:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "OpenRestrictedMusicProvider"

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access, callingPackage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return v3

    .line 283
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 284
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_8

    .line 337
    array-length v0, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_7

    .line 287
    :try_start_0
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;->getSHA1(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    .line 291
    sget-object v5, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->g:[Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 294
    sget-boolean v5, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->b:Z

    if-eqz v5, :cond_6

    const-string v5, "OpenRestrictedMusicProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Allowed to access ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], SHA1["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v1

    :catch_0
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    const-string p1, "OpenRestrictedMusicProvider"

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access. callingPackage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private final a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 309
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 310
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private final b(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 211
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not support delete operation."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "writer"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProviderDumpHelper;->a:Lcom/samsung/android/app/music/provider/MusicProviderDumpHelper;

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "MEDIA_PROVIDER"

    invoke-virtual {p1, p3, p2, v0}, Lcom/samsung/android/app/music/provider/MusicProviderDumpHelper;->a(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 255
    sget-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x2974

    if-ne v0, v1, :cond_0

    const-string p1, "image/jpeg"

    return-object p1

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not support insert operation."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onCreate()Z
    .locals 3

    const-string v0, "OpenRestrictedMusicProvider"

    const-string v1, "onCreate"

    const/4 v2, 0x1

    .line 112
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x2974

    if-ne v0, v1, :cond_0

    .line 226
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->b:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "OpenRestrictedMusicProvider"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", musicProviderUri : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "musicProviderUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    const-string p2, "context.contentResolver.\u2026r(musicProviderUri, mode)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "OpenRestrictedMusicProvider"

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicProviderUri : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", FileNotFoundException occurred"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "music_bixby_no_album_cover.png"

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    const-string p2, "context.assets.openFd(Re\u2026ASSETS_DEFAULT_FILE_NAME)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "musicProviderUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "musicProviderUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    throw p1

    .line 222
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 218
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Unauthorized access."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    const-string v2, "uri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v15, "OpenRestrictedMusicProvider"

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query uri="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", projection="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    if-eqz v11, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/16 v17, 0x0

    move-object/from16 v2, p2

    move-object v0, v10

    move-object/from16 v10, v17

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v0, v10

    move-object/from16 v2, v16

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object/from16 v2, p4

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :cond_1
    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sortOrder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v15, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 133
    sget-object v2, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x4e2a

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support query operation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 144
    :pswitch_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 145
    iput-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 146
    iput-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 147
    iput-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 148
    iput-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_1

    .line 136
    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 137
    iput-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 138
    iput-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 139
    iput-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 140
    iput-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    :goto_1
    move-object/from16 v1, p0

    goto/16 :goto_7

    .line 151
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->j(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v1, "audio_id"

    const-string v2, "source_id"

    const-string v3, "artist_id"

    const-string v4, "source_artist_id"

    const-string v5, "album_id"

    const-string v6, "source_album_id"

    .line 158
    iput-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 159
    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 333
    array-length v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v9, :cond_6

    aget-object v15, v7, v10

    add-int/lit8 v16, v11, 0x1

    .line 160
    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 161
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    const-string v7, "audio."

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AS "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_3
    move-object/from16 v19, v7

    .line 162
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "audio."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " AS "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 163
    :cond_4
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "audio."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " AS "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 160
    :cond_5
    :goto_3
    aput-object v15, v8, v11

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    move-object/from16 v7, v19

    goto :goto_2

    .line 168
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v12

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const/16 v18, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v8, 0x1

    const/16 v18, 0x1

    :goto_5
    if-nez v18, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    const-string v2, ""

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "cp_attrs=65537"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 170
    iput-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 171
    iput-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    goto/16 :goto_1

    .line 177
    :goto_7
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/provider/OpenRestrictedMusicProvider;->a(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_a
    move-object v1, v0

    .line 124
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Unauthorized access."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not support update operation."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
