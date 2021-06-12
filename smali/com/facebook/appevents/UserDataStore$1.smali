.class final Lcom/facebook/appevents/UserDataStore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ud:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/facebook/appevents/UserDataStore$1;->val$ud:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initStore should have been called before calling setUserData"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$200()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/UserDataStore$1;->val$ud:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->access$300(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$600()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.appevents.UserDataStore.userData"

    .line 84
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/UserDataStore;->access$500(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
