.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$iPlayer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$iPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$iPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->access$getPlayerParcel$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getPlayer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$iPlayer$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object v0

    return-object v0
.end method
