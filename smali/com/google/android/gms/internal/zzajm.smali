.class final Lcom/google/android/gms/internal/zzajm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzajl;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajm;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajm;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajm;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Attempting to read user agent from Google Play Services."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajm;->a:Landroid/content/Context;

    const-string v2, "admob_user_agent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Attempting to read user agent from local cache."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajm;->b:Landroid/content/Context;

    const-string v2, "admob_user_agent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "user_agent"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "Reading user agent from WebSettings"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzajm;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_agent"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Persisting user agent."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method
