.class public final Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->a(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;I)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->a(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;I)V

    return-void
.end method
