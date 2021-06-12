.class public final Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder$Companion;

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "BrowseLegalNoticeViewHolder"


# instance fields
.field private final b:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder$Companion;

    const-string v0, "BrowseLegalNoticeViewHolder"

    .line 34
    sput-object v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "itemView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, -0x3f1

    .line 16
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;-><init>(Landroid/view/View;I)V

    const p1, 0x7f13015f

    .line 21
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.text1)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 1

    const-string v0, "browseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->BROWSE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->buildNotice(Landroid/widget/TextView;)V

    return-void
.end method
