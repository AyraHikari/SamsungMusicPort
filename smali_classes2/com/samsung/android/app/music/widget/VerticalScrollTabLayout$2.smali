.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$2;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$2;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$2;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;->a(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method
