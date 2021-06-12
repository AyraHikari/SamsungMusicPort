.class final Lcom/samsung/android/app/music/list/ListDeleteableImpl$deleteItems$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListDeleteableImpl;->deleteItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/ListDeleteableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$deleteItems$1;->a:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[J)V
    .locals 2

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$deleteItems$1;->a:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->access$showDeleteConfirmDialog(Lcom/samsung/android/app/music/list/ListDeleteableImpl;[J)Z

    move-result p1

    if-nez p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$deleteItems$1;->a:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListDeleteableImpl$deleteItems$1;->a:Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->access$getMActivity$p(Lcom/samsung/android/app/music/list/ListDeleteableImpl;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;->deleteItemsInternal(Landroid/app/Activity;[J)V

    :cond_0
    return-void
.end method
