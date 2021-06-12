.class Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 456
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;->this$1:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    .line 457
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 458
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_dialog_header_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public binHeaderView(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;)V
    .locals 1

    .line 462
    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 464
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
