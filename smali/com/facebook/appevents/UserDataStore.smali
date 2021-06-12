.class public Lcom/facebook/appevents/UserDataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CITY:Ljava/lang/String; = "ct"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final DATE_OF_BIRTH:Ljava/lang/String; = "db"

.field public static final EMAIL:Ljava/lang/String; = "em"

.field public static final FIRST_NAME:Ljava/lang/String; = "fn"

.field public static final GENDER:Ljava/lang/String; = "ge"

.field public static final LAST_NAME:Ljava/lang/String; = "ln"

.field public static final PHONE:Ljava/lang/String; = "ph"

.field public static final STATE:Ljava/lang/String; = "st"

.field private static final TAG:Ljava/lang/String; = "UserDataStore"

.field private static final USER_DATA_KEY:Ljava/lang/String; = "com.facebook.appevents.UserDataStore.userData"

.field public static final ZIP:Ljava/lang/String; = "zp"

.field private static hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static JsonStrToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 264
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 267
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    .line 273
    :catch_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    return-void
.end method

.method static synthetic access$300(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->updateHashUserData(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Landroid/content/SharedPreferences;
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static clear()V
    .locals 2

    .line 136
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/UserDataStore$2;

    invoke-direct {v1}, Lcom/facebook/appevents/UserDataStore$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static encryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    .line 200
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 206
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/appevents/internal/AppEventUtility;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static getHashedUserData()Ljava/lang/String;
    .locals 2

    .line 150
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    .line 155
    :cond_0
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized initAndWait()V
    .locals 4

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 160
    monitor-exit v0

    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 165
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.facebook.appevents.UserDataStore.userData"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/facebook/appevents/UserDataStore;->JsonStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 158
    monitor-exit v0

    throw v1
.end method

.method static initStore()V
    .locals 1

    .line 67
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    return-void
.end method

.method private static mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 243
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 248
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 249
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static maybeSHA256Hashed(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[A-Fa-f0-9]{64}"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static normalizeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "em"

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object p0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 216
    :cond_0
    sget-object p0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string p1, "Setting email failure: this is not a valid email address"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_1
    const-string v0, "ph"

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "[^0-9]"

    const-string v0, ""

    .line 222
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "ge"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    const-string p1, "f"

    .line 227
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "m"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 230
    :cond_4
    sget-object p0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string p1, "Setting gender failure: the supported value for gender is f or m"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_5
    :goto_1
    return-object p0

    :cond_6
    return-object p1
.end method

.method static setUserDataAndHash(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/UserDataStore$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/UserDataStore$1;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static setUserDataAndHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "em"

    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "fn"

    .line 106
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "ln"

    .line 109
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "ph"

    .line 112
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    const-string p0, "db"

    .line 115
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p5, :cond_5

    const-string p0, "ge"

    .line 118
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p6, :cond_6

    const-string p0, "ct"

    .line 121
    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p7, :cond_7

    const-string p0, "st"

    .line 124
    invoke-virtual {v0, p0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p8, :cond_8

    const-string p0, "zp"

    .line 127
    invoke-virtual {v0, p0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz p9, :cond_9

    const-string p0, "country"

    .line 130
    invoke-virtual {v0, p0, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_9
    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V

    return-void
.end method

.method private static updateHashUserData(Landroid/os/Bundle;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2}, Lcom/facebook/appevents/UserDataStore;->maybeSHA256Hashed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_3
    invoke-static {v1, v2}, Lcom/facebook/appevents/UserDataStore;->normalizeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/UserDataStore;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 186
    sget-object v3, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method
