.class final Lcom/samsung/android/app/music/list/local/EmptyViewCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/local/HeartFragment;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    iput p2, p0, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7f0400bb

    .line 1138
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    .line 1142
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;->b:I

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1302d2

    .line 1143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b02b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f1302d3

    .line 1144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b013a

    .line 1145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1146
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method
