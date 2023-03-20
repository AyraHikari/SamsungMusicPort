.class public Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;
.super Landroid/content/ContentProvider;
.source "CapsuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:Z

.field public static final d:Landroid/content/pm/Signature;

.field public static final e:Landroid/content/pm/Signature;

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby2/action/a;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Z

.field public static h:Z

.field public static final o:Ljava/lang/Object;

.field public static p:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.0.23"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    .line 2
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->c:Z

    .line 3
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIxCzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDRE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJvaWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIBAQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqjxtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9LkthVIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoMdhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8eoYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OLDUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAOTcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAvcv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRMYWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2WzoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Landroid/content/pm/Signature;

    .line 5
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082040e308202f6a0030201020206017ce4114f86300d06092a864886f70d01010505003081bd310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373312d302b0603550403132453616d73756e6720506c6174666f726d204b657920666f7220494f542064657669636573301e170d3231313130333034333135325a170d3431313130323135303030305a3081bd310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373312d302b0603550403132453616d73756e6720506c6174666f726d204b657920666f7220494f54206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100b59bf685e92c3075041ec8952a511d23ea013c70af115d4aae07307cf86e7a7d9fd253cb405a394ce7767859f576ab7d5202210223e6f2ae2d52a9347933fadc9ff3396ffc784b68f2c106f6038a49b779f6221a1e5c1f636e96aacefec6ca460fe54b93d41ca6b16583411b6bf8eeae8014f8c46a1101445b9c42c3e2eee893d8c300e3ebab428e77a0d9f7acf7992c46649e6b8a206d249fda97978572428b38dbb7d71d715005080b7d3bcbc7280d321d299e09c8981eec7699a533049fff0c1c48f152fa16db0d1776dfe31db7735bb53633b6dc8f4b0c6effea9152d431ec48dbea09523fe1b0d3e1cb54b9e5e4b107ebae7b9d3b33dd1b77baedd9b0590203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101006fd7b92f463a1d2f5fc08dd3b06880a12afe76c80dc47f0113f06016de59a77859be19515c5b93285acb25e2701d832bef6fc4c489e081cffcd1fb3930420cf757eceb9b1f64cfe0ca705b00f73b7d0431aeb616085d3d1b392a41802e144acbf49d841ac9787988915446283d61cb4cc25272460a9d0717539f64feacb19042d027b3242f4332ee869f0d8254d514d9824f01b806470a637a124beb66ecf1ade20cbcac371c44b4595e9528c6b43dd3ae967c2d71134425d1684949b13f312b9c48f156c18431fb3d82b6f67bc04be8d1b4cf17042d91a0159471f90672e2f29e181ec106696de357b0c6398031c2806b5e8b4db606ee0d2e718a5a92218281"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e:Landroid/content/pm/Signature;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Ljava/util/Map;

    .line 7
    sput-boolean v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Z

    .line 8
    sput-boolean v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Z

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Z

    return p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/a;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby2/action/a;

    if-nez v2, :cond_0

    .line 3
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->p:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/bixby2/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static j()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v1, "Removed all action handlers"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Z

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 3
    sput-boolean p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Z

    .line 4
    sget-object p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v1, "releasing initialize wait lock."

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/bixby2/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$a;-><init>()V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v1, "call()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call(): method --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extras --> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 7
    sget-boolean v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Z

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->m()V

    .line 10
    sget-boolean v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Z

    if-nez v1, :cond_2

    const-string p1, "App initialization error."

    .line 11
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string p2, "Initialization Failure.."

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->l(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "getAppContext"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/c;->c()Lcom/samsung/android/sdk/bixby2/c;

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/c;->d()Lcom/samsung/android/sdk/bixby2/state/a;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/samsung/android/sdk/bixby2/state/a;->b(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "appContext"

    .line 17
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p2

    :cond_4
    if-eqz p3, :cond_5

    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action params are EMPTY."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method is null or empty. pass valid action name."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "not allowed to access capsule provider."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized e(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    monitor-enter p0

    const/4 v0, -0x1

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v2, "executeAction()"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby2/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby2/action/a;

    move-result-object v5

    if-nez v5, :cond_0

    const-string p1, "Handler not found!!.."

    .line 3
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    const-string p2, "Action handler not found"

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->l(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz p2, :cond_5

    :try_start_1
    const-string v2, "actionType"

    .line 5
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;-><init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)V

    .line 7
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$b;

    move-object v3, v10

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$b;-><init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;Lcom/samsung/android/sdk/bixby2/action/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-static {v2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;->b(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {p2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 12
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;->b(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;->c()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 14
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_3
    :try_start_3
    const-string p2, "timeout occurred.."

    .line 15
    invoke-static {v1, p2}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 16
    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$c;->d(Z)V

    .line 17
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 18
    :cond_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "action execution timed out"

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->l(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p2

    .line 20
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2

    :cond_5
    :goto_0
    const-string p1, "params missing"

    .line 21
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "params missing.."

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->l(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    :try_start_7
    sget-object p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->l(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/bixby2/receiver/a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/receiver/a;-><init>()V

    .line 3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.sdk.bixby2.ACTION_APPLICATION_TRIGGER"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v1, "ApplicationTriggerReceiver registered"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby2/action/a;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby2/action/a;

    .line 2
    sget-object v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->o:Ljava/lang/Object;

    monitor-enter v2

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    sget-boolean v3, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Z

    if-eqz v3, :cond_0

    .line 4
    sput-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->p:Ljava/lang/String;

    const-wide/16 v3, 0xbb8

    .line 5
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/bixby2/action/a;

    .line 7
    :cond_0
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p1, "actionUri"

    return-object p1
.end method

.method public final h([Landroid/content/pm/Signature;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    array-length v1, p1

    if-lez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Landroid/content/pm/Signature;

    aget-object v2, p1, v0

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e:Landroid/content/pm/Signature;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final i()Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v1, "packages is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 6
    :cond_1
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    const-string v7, "com.samsung.android.bixby.agent"

    .line 7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.samsung.android.app.routines"

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/16 v7, 0x40

    .line 9
    :try_start_0
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 10
    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h([Landroid/content/pm/Signature;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    return v1

    :catch_0
    move-exception v6

    .line 11
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to access capsule provider. package (s): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v1, v0}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status_code"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p2, "Failed to execute action."

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "status_message"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v1, 0x1388

    .line 3
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v3, "interrupted exception"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/bixby2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onCreate()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Z

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
