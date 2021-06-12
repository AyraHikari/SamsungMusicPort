.class public final Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rectInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->isMultiWindowMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->a(Z)V

    return-void
.end method
