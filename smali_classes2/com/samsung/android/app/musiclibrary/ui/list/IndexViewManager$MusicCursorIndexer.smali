.class final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$MusicCursorIndexer;
.super Landroid/support/v7/widget/SeslCursorIndexer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MusicCursorIndexer"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;Landroid/database/Cursor;I[Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string v0, "cursor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexCharacters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$MusicCursorIndexer;->a:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;

    .line 304
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/SeslCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    const/4 p1, 0x1

    if-ne p6, p1, :cond_0

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "Locale.getDefault()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 309
    new-instance p2, Ljava/util/Locale;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@colNumeric=yes"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$MusicCursorIndexer;->mCollator:Ljava/text/Collator;

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$MusicCursorIndexer;->mCollator:Ljava/text/Collator;

    const-string p2, "mCollator"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/text/Collator;->setStrength(I)V

    :cond_0
    return-void
.end method
