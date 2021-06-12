.class Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "VerticalTabFragment"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(I)V

    return-void
.end method
