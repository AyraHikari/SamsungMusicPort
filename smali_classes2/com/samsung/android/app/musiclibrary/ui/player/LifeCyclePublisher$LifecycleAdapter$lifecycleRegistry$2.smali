.class final Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$lifecycleRegistry$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;-><init>(Landroid/arch/lifecycle/Lifecycle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/arch/lifecycle/LifecycleRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$lifecycleRegistry$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/arch/lifecycle/LifecycleRegistry;
    .locals 2

    .line 106
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$lifecycleRegistry$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    check-cast v1, Landroid/arch/lifecycle/LifecycleOwner;

    invoke-direct {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$lifecycleRegistry$2;->invoke()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    return-object v0
.end method
