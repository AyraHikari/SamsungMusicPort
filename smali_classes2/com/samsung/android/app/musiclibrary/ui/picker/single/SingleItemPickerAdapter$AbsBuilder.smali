.class public abstract Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder<",
        "TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->a:I

    return v0
.end method

.method public final a(I)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 141
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->a:I

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;

    return-object p1
.end method

.method public final a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 146
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->b:Z

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->b:Z

    return v0
.end method
