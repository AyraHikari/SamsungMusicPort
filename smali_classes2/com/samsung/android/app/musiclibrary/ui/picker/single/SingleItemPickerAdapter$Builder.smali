.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->d()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    .locals 2

    .line 158
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;->c()Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
