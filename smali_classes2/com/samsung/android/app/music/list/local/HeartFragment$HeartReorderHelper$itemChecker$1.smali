.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$itemChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$itemChecker$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$itemChecker$1;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0xb

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
