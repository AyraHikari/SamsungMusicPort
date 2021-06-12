.class Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
