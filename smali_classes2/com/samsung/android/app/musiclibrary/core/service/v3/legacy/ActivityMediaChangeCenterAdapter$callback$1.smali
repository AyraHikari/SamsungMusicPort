.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerChanged(Ljava/util/List;)V
    .locals 2
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

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter$callback$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;->access$getLegacyActiveMediaCenter$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterAdapter;)Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    return-void
.end method
