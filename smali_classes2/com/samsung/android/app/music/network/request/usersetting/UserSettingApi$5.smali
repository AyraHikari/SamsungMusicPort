.class final Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a(Landroid/content/Context;IZLjava/lang/String;)V
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
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;->a:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;->b:I

    iput p3, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/SingleSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/SingleSource<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserSettingTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;->b:I

    iget v2, p0, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;->c:I

    .line 92
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport;->a(ILjava/lang/String;)Lio/reactivex/Single;

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

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi$5;->a()Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
