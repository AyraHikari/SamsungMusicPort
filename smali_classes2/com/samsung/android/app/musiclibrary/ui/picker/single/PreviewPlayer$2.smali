.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->onExtractError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;->a:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V

    return-void
.end method
