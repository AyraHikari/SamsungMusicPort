.class public Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySubscriptionViewHolder"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const p1, 0x7f130474

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;->a:Landroid/widget/ImageView;

    return-void
.end method
