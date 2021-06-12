.class final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$run$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$$special$$inlined$run$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;->h(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;

    move-result-object v0

    const-string v1, "v"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "e"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexViewHeightManager;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
