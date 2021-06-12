.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;",
            "I)V"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;->b:Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;->b:Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;->removeContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V

    .line 446
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$onCreateContextMenu$1;->c:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    return-void
.end method
