.class final Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$UiDestroyer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;->a(Landroid/app/Activity;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
