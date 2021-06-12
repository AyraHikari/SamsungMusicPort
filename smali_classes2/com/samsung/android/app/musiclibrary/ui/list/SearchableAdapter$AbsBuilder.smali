.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<",
        "TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 p1, 0x0

    .line 378
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 382
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Z
    .locals 0

    .line 375
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Z
    .locals 0

    .line 375
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->c:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->a:Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    return-object p1
.end method

.method public a(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 394
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->b:Z

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    return-object p1
.end method

.method public b(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 405
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    return-object p1
.end method

.method public synthetic setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->b(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object p1

    return-object p1
.end method
