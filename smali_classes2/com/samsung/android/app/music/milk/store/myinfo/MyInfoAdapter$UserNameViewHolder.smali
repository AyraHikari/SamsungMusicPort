.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserNameViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f130471

    .line 459
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.my_info_user_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f130472

    .line 460
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.my_info_user_type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->b:Landroid/widget/TextView;

    .line 463
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter$UserNameViewHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method
