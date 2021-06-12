.class Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentsChangeHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->a(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->b(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->c(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->d(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->a(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
