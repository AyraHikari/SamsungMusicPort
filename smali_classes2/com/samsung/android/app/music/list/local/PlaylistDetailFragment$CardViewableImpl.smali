.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CardViewableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

.field private final b:Z

.field private c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Landroid/view/View;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1082
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->b:Z

    .line 1087
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->d:I

    .line 1090
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->e:I

    .line 1092
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->f:I

    .line 1094
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100185

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->g:I

    const-string p1, "title"

    .line 1098
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->i:Ljava/lang/String;

    const-string p1, "cp_attrs"

    .line 1099
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->j:Ljava/lang/String;

    const-string p1, "album_id"

    .line 1100
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->k:Ljava/lang/String;

    return-void
.end method

.method private final a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p2, :pswitch_data_0

    const p2, 0x7f0b0429

    .line 1248
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.unknown)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0b0090

    .line 1247
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.artist)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0b0080

    .line 1246
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.album)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Landroid/view/View;)V
    .locals 5

    .line 1253
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    if-lez v0, :cond_0

    .line 1254
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;I)V

    .line 1255
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    const-string v1, "activity!!.windowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "activity!!.windowManager.defaultDisplay"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-lez v0, :cond_7

    .line 1260
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->d(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    .line 1261
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->b()I

    move-result v1

    .line 1264
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->f:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->g:I

    add-int/lit8 v4, v1, -0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    .line 1266
    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->b:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    iget v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->d:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    .line 1268
    :cond_6
    iget v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;I)V

    .line 1269
    iget v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;I)V

    const-string p1, "PlaylistDetailFragment"

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureUpdateItemWidth() itemWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), spaceInner="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", spaceOuter="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->f:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isDex="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->b:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1237
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/list/local/query/MostPlayedCardViewQueryArgs;-><init>(I)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    check-cast v0, Landroid/support/v4/content/Loader;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;-><init>()V

    .line 1104
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f040046

    .line 1105
    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1106
    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->f:I

    iget v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->e:I

    iget v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->f:I

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1105
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    .line 1108
    iget-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    .locals 11

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040047

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1114
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1115
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1117
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;-><init>()V

    const-string v0, "itemView"

    .line 1118
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a(Landroid/view/View;)V

    const v0, 0x7f13013a

    .line 1119
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "itemView.findViewById(R.id.thumbnail)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a(Landroid/widget/ImageView;)V

    .line 1120
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.thumbnail)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->b(Landroid/view/View;)V

    const v0, 0x7f1301d1

    .line 1121
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.thumbnail_text2)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a(Landroid/widget/TextView;)V

    const v0, 0x7f1301d0

    .line 1122
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->b(Landroid/widget/TextView;)V

    if-lez p2, :cond_0

    .line 1123
    iget p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->g:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    const/4 v1, 0x0

    .line 1140
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a(Landroid/view/View;)V

    .line 1141
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1146
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v4, "activity!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity!!.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "list_type"

    .line 1553
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1145
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1149
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->d()Landroid/widget/TextView;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1155
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->i:Ljava/lang/String;

    .line 1554
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1157
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->e()Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->e()Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1160
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->j:Ljava/lang/String;

    .line 1555
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1161
    invoke-static {v3}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1163
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-interface {v4}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 1164
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object v5

    .line 1165
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const v4, 0x3ebd70a4    # 0.37f

    .line 1166
    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1170
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->k:Ljava/lang/String;

    .line 1556
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1171
    invoke-static {v3}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v3

    const v6, 0x7f100086

    .line 1173
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v6

    .line 1174
    invoke-virtual {v6, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    .line 1175
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->b()Landroid/widget/ImageView;

    move-result-object p1

    sget v4, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 1177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1179
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1180
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1181
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    .line 1182
    array-length v0, p2

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v2, p2, v1

    const-string v3, "UiList"

    .line 1185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " columnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1183
    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1188
    :cond_7
    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_8
    return-object v0

    .line 1193
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 1129
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 1130
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1132
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->a:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const-string p1, "_id"

    .line 1557
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list_type"

    .line 1558
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "title"

    .line 1559
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cp_attrs"

    .line 1560
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 1206
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v1

    const v2, 0x10003

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 1208
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-object v7, v1

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 1209
    sget-object v1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v5, v2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/support/v4/app/Fragment;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 1207
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1212
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v1

    const v3, 0x10002

    if-eqz v1, :cond_1

    if-ne v0, v3, :cond_1

    .line 1213
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1214
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 1215
    sget-object v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/support/v4/app/Fragment;

    const/4 p1, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, v9

    move-object v9, p1

    .line 1213
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v1, 0x80002

    if-ne p2, v1, :cond_2

    if-ne v0, v2, :cond_2

    const/16 v1, 0x6e

    .line 1219
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v1

    .line 1220
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    .line 1221
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    if-ne v0, v3, :cond_3

    const/16 v1, 0x64

    .line 1224
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v1

    .line 1225
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    .line 1226
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    .line 1229
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;->a(II)V

    :cond_4
    return-void

    :cond_5
    return-void
.end method

.method public c(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
