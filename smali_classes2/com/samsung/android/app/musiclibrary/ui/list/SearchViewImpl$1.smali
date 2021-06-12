.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
