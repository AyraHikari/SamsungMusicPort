.class final Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;->genres:Ljava/util/List;

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserSettingTransport;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport;->a(Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$2;->a()Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
