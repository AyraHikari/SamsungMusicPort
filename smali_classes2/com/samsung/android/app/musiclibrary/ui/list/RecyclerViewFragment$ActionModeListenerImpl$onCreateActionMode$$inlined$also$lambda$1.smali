.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $menu$inlined:Landroid/view/Menu;

.field final synthetic $mode$inlined:Landroid/support/v7/view/ActionMode;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;->$mode$inlined:Landroid/support/v7/view/ActionMode;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;->$menu$inlined:Landroid/view/Menu;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1047
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl$onCreateActionMode$$inlined$also$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->b()V

    :cond_0
    return-void
.end method
