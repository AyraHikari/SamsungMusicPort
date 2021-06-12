.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;->a(I)V

    return-void
.end method
