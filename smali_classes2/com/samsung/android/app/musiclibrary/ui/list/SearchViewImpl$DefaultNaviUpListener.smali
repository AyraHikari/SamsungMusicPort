.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$DefaultNaviUpListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNaviUpListener"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$DefaultNaviUpListener;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$DefaultNaviUpListener;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$DefaultNaviUpListener;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
