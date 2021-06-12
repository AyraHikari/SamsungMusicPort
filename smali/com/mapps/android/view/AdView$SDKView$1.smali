.class Lcom/mapps/android/view/AdView$SDKView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$1;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 2059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;
    .locals 0

    .line 2059
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKView$1;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2063
    new-instance p1, Lcom/mapps/android/view/AdView$SDKView$1$1;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdView$SDKView$1$1;-><init>(Lcom/mapps/android/view/AdView$SDKView$1;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    return-void
.end method
