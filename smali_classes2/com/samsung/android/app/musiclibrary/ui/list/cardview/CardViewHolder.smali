.class public Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# instance fields
.field public a:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public b:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
