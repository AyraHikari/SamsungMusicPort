.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;
.super Lcom/samsung/android/app/music/list/ListPlayableImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeartPlayable"
.end annotation


# instance fields
.field final synthetic b:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b()Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;I)V
    .locals 0

    .line 505
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->a(I)V

    return-void
.end method


# virtual methods
.method public l_()V
    .locals 7

    .line 508
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "FAVORITE"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 509
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 510
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

    .line 511
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 1754
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_4

    .line 1755
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x66

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 518
    :cond_2
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 526
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;->b:Lcom/samsung/android/app/music/list/local/HeartFragment;

    new-instance v3, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable$play$2;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
