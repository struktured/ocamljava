(*
 * This file is part of OCaml-Java library.
 * Copyright (C) 2007-2014 Xavier Clerc.
 *
 * OCaml-Java library is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * OCaml-Java library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *)

type t

external make_reentrant : bool -> t =
  "ocamljava_lock_make_reentrant"

external lock : t -> unit =
  "ocamljava_lock_lock"

external lock_interruptibly : t -> unit =
  "ocamljava_lock_lock_interruptibly"

external new_condition : t -> Condition.t =
  "ocamljava_lock_new_condition"

external try_lock : t -> bool =
  "ocamljava_lock_try_lock"

external try_lock_time : t -> int64 -> TimeUnit.t -> bool =
  "ocamljava_lock_try_lock_time"

external unlock : t -> unit =
  "ocamljava_lock_unlock"
