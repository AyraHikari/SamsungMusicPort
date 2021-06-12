.class public abstract Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Paint;)V
.end method

.method protected final a(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->a:Z

    return-void
.end method

.method protected final a()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->a:Z

    return-void
.end method
