.class final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    .line 536
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    goto :goto_0

    .line 539
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :goto_0
    return-void
.end method
