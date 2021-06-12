.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation

    const-string v0, "players"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->changeActivePlayer(Ljava/util/List;)V

    return-void
.end method
